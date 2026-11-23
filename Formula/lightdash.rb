class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.367.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.4/lightdash-cli-3.367.4-macos-arm64.tar.gz"
      sha256 "e86c16bda1a3f39389def56d52ff3244f718354b66d91d62f986725e0a100bd3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.367.4/lightdash-cli-3.367.4-macos-x64.tar.gz"
      sha256 "3a3a387aa33cc9d619acb6a489a9ce8bb50b115315cede41ef494dbb8d4419f8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.367.4/lightdash-cli-3.367.4-linux-x64.tar.gz"
    sha256 "9edec29bd3b058453e463237eb6012991bfc7ec6783b3911ae5e65a190928f65"

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
