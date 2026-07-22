class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3443.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3443.0/lightdash-cli-0.3443.0-macos-arm64.tar.gz"
      sha256 "42e47e23d42f30daf810e84a441f69a8bc6f449a5f942606b81dcb0e8bb36b75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3443.0/lightdash-cli-0.3443.0-macos-x64.tar.gz"
      sha256 "78081b7b916eab451c42cb4552b5e0aa65139166bcf74ac1bd6d6d9f82d05933"
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
