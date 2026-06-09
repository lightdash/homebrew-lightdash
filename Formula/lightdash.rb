class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3118.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.0/lightdash-cli-0.3118.0-macos-arm64.tar.gz"
      sha256 "897715f17bf2f6ef7a98b25bcbe156fb37c1645bd7e307404587310a2e0ddc7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.0/lightdash-cli-0.3118.0-macos-x64.tar.gz"
      sha256 "aecb89a3a458208d0e56f65231ec7098c002e324ec6677843f8608afc79fb40e"
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
