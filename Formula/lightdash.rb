class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.183.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.183.1/lightdash-cli-1.183.1-macos-arm64.tar.gz"
      sha256 "8fd93f1c2f484c152ad565c012c3a5f0922878761794330e38999b2bf5a9d120"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.183.1/lightdash-cli-1.183.1-macos-x64.tar.gz"
      sha256 "f97f7026b00fac692e8f933a5e56c36793c4901cc6394396eab14a93260fa2a4"
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
