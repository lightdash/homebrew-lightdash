class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3449.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3449.1/lightdash-cli-0.3449.1-macos-arm64.tar.gz"
      sha256 "3c08562083f1870c8723d01965206ce8626222266a30e50dcffcdf18e3c43aa4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3449.1/lightdash-cli-0.3449.1-macos-x64.tar.gz"
      sha256 "aa54956f6ae8a368837bd5293f9db84c9f329475af0cfa8f47ee7eca4823174d"
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
