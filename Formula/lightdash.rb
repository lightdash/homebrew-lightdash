class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.83.0/lightdash-cli-1.83.0-macos-arm64.tar.gz"
      sha256 "0822549842a05f493ef2994104927f1b5a8ba6084b4525cdb3d51c4c2bee1040"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.83.0/lightdash-cli-1.83.0-macos-x64.tar.gz"
      sha256 "08cc76c5e9d86d33637851b9b80489495f54faa5763457cc3cec433859aa13b4"
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
