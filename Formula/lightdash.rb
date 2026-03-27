class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2677.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2677.1/lightdash-cli-0.2677.1-macos-arm64.tar.gz"
      sha256 "8525e7bba8f0721915536d144cdec55573bb63e73e7404cceabf09755848b3ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2677.1/lightdash-cli-0.2677.1-macos-x64.tar.gz"
      sha256 "9a841333961524c01d7d2e0fcbf5780853f747c5a04b06846d3903d65c40bf0d"
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
