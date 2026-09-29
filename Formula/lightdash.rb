class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.374.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.374.0/lightdash-cli-2.374.0-macos-arm64.tar.gz"
      sha256 "6867f1f0d63436745f947de3b960d3376f482eed0dad406c6c39c4a6fe1362e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.374.0/lightdash-cli-2.374.0-macos-x64.tar.gz"
      sha256 "172bcfd98a7360571d5cbd80b7d782b9f282ea66010c4f81462daa76563bc1ee"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.374.0/lightdash-cli-2.374.0-linux-x64.tar.gz"
    sha256 "8ac9bbecf5cfc80c7f9f0734b24a8d654dcc2f3ba56db5b918039404e483d301"

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
