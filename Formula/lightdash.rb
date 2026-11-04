class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.151.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.151.1/lightdash-cli-3.151.1-macos-arm64.tar.gz"
      sha256 "e3252e81ca31b7caf5237be7a8768f22804a29214653d1ed182bab03f795c146"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.151.1/lightdash-cli-3.151.1-macos-x64.tar.gz"
      sha256 "87bc866459f5e549a5473f5facc20a343cf98c4902327c4d06b119fb63056165"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.151.1/lightdash-cli-3.151.1-linux-x64.tar.gz"
    sha256 "8a06483e3a9de8f08bebe7730c347cc766a9efab3e7cd63c667848f402e15146"

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
