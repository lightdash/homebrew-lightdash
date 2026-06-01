class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3069.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3069.0/lightdash-cli-0.3069.0-macos-arm64.tar.gz"
      sha256 "26ac5e6cd90cd0d04b1dbf258cf6cdc634bb50674b35bed308e13910130a7057"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3069.0/lightdash-cli-0.3069.0-macos-x64.tar.gz"
      sha256 "18aa2d6095312618ca733a68c977f9e1b83e5556ad8121f401291a7ac097ad2e"
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
