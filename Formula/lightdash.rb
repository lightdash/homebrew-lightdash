class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.190.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.1/lightdash-cli-2.190.1-macos-arm64.tar.gz"
      sha256 "2a42bf843a2248ddb361947f1159cd8ae13649d0e03a5b8073aaaadaa3a5a7ab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.1/lightdash-cli-2.190.1-macos-x64.tar.gz"
      sha256 "7d5f5b4bc710b1c171e03208a1666985aacd7c6608e8a2bec91c19fc0bf38af2"
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
