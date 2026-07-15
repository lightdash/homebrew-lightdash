class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3383.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3383.1/lightdash-cli-0.3383.1-macos-arm64.tar.gz"
      sha256 "c167cc47d6467d5048e82dae9e29e2cff982eb770f4fcfa5b98b19cd7cb15320"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3383.1/lightdash-cli-0.3383.1-macos-x64.tar.gz"
      sha256 "85711ebb694a6b56557d37320859e47a7e6c490b7cefe21330293c0a34d5abda"
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
