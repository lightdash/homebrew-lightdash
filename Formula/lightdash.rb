class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.184.0/lightdash-cli-3.184.0-macos-arm64.tar.gz"
      sha256 "65d036d22f0bf82a6e4c365371f1a84ffba483af05b302900aa2f2eabfb3ffbb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.184.0/lightdash-cli-3.184.0-macos-x64.tar.gz"
      sha256 "0f3125bfad546b6a5238835ed8c2f099bcc02bccc2de59f2def959acbe513152"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.184.0/lightdash-cli-3.184.0-linux-x64.tar.gz"
    sha256 "113a3357b83cf6ab0e6c46eb4bbac58b5133653e341991b2bfecdcec19b7f7d7"

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
