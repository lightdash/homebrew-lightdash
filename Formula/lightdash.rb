class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3388.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3388.0/lightdash-cli-0.3388.0-macos-arm64.tar.gz"
      sha256 "718268cab66484c8e9863be20cf572b44af7e754f2ce29acb3e7c2a296965192"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3388.0/lightdash-cli-0.3388.0-macos-x64.tar.gz"
      sha256 "e9ec17ceecdc55a33ffa820af1819a2a50e0b6b18c192d11fb1fa772c44e61bc"
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
