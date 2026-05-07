class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2893.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.1/lightdash-cli-0.2893.1-macos-arm64.tar.gz"
      sha256 "2727930ca91f58effc0c73c4d63a612ebcc525d1185f2d750c08522e04ba8e83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2893.1/lightdash-cli-0.2893.1-macos-x64.tar.gz"
      sha256 "400b934daafa00b59e3e0fc6800eff954abe84df84c11ef42c43cd89c4af070d"
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
