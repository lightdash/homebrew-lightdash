class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3011.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3011.0/lightdash-cli-0.3011.0-macos-arm64.tar.gz"
      sha256 "20ed7aec27f41a9185de65dfcf7e55dbfb9795bd406037fc9387e66fd0da8548"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3011.0/lightdash-cli-0.3011.0-macos-x64.tar.gz"
      sha256 "d22d754b527a3a5804a4725240264dc46d514413ea7e2282410d821174bf738d"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
