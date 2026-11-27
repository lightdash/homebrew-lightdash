class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.423.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.423.0/lightdash-cli-3.423.0-macos-arm64.tar.gz"
      sha256 "2ef26e9050c6eefe944e6bc1ce8078684fed01b08f536f9edff6090effad21fd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.423.0/lightdash-cli-3.423.0-macos-x64.tar.gz"
      sha256 "1a6bb718b4c98311db2aa079b9123de08bb8185bdb9829d40795ecc60bee3ee0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.423.0/lightdash-cli-3.423.0-linux-x64.tar.gz"
    sha256 "62b6d7dc6be58116d740a7a0b05c135aa206586bbe54f8d4b73d60c4ec402b42"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
