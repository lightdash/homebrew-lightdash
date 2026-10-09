class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.502.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.502.1/lightdash-cli-2.502.1-macos-arm64.tar.gz"
      sha256 "a7402bd0cea158a79b95ca797786ba0a57e66d25112780f0ed0c464de282dac9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.502.1/lightdash-cli-2.502.1-macos-x64.tar.gz"
      sha256 "984eaddafb9a6941a0aa6bff2df2aa45b328b7af7cf7a16f44356828145dc27a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.502.1/lightdash-cli-2.502.1-linux-x64.tar.gz"
    sha256 "4b2a450cc358994a19c1b7413139063b690dc7808acd9523b34a0ecc89b887a8"

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
