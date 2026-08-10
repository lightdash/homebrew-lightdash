class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.107.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.107.1/lightdash-cli-1.107.1-macos-arm64.tar.gz"
      sha256 "350056bf3ce3e24ba2919dd17a360fdb53a4d4b523aa8222ac02d4286f6f9f85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.107.1/lightdash-cli-1.107.1-macos-x64.tar.gz"
      sha256 "148ef8e8d99e232362ae71ed4f0c7f7c7aa06140128d0357cd88b650ff6c5005"
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
