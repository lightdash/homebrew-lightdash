class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2309.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2309.0/lightdash-cli-0.2309.0-macos-arm64.tar.gz"
      sha256 "4b8c99349b58814247b660e21055ddd128bcce629e70d89ed7518187c85682df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2309.0/lightdash-cli-0.2309.0-macos-x64.tar.gz"
      sha256 "49a1312ebf54924c3df8136392a9e1e43bdee7c27f810d233e9a856aabbb59ca"
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
