class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.2/lightdash-cli-2.606.2-macos-arm64.tar.gz"
      sha256 "2b93a45c20fee8bb7981a46b40371b7fc4cda126ad7f991470d02ad87d97bc13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.2/lightdash-cli-2.606.2-macos-x64.tar.gz"
      sha256 "6fd5adc98d72b6f23eab28623d928e408bf25f4fb2c7889a0de3da8bdf8cb0d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.2/lightdash-cli-2.606.2-linux-x64.tar.gz"
    sha256 "5c5760b62d323ab35e7010291e1105d6d9aa58703f523c7db3d47796157d61f7"

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
