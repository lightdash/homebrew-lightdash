class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.173.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.2/lightdash-cli-2.173.2-macos-arm64.tar.gz"
      sha256 "4619ec9d7c2f168dad9583acea059813054bcc070f134e3f22a84874de69c7ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.173.2/lightdash-cli-2.173.2-macos-x64.tar.gz"
      sha256 "4031b701f7578b785c94a3b8d1ef5ae76ca5af25d8c70f4976acf4f46832c908"
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
