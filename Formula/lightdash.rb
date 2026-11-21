class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.361.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.361.1/lightdash-cli-3.361.1-macos-arm64.tar.gz"
      sha256 "fa993f7d973b8cb3981507968a345ab412057045980d70e771090efbaaf4bddf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.361.1/lightdash-cli-3.361.1-macos-x64.tar.gz"
      sha256 "f4854f40c2d9d2733aadfd0467f95b491a99b77e034230835580057711ddd622"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.361.1/lightdash-cli-3.361.1-linux-x64.tar.gz"
    sha256 "0df9ea529fc5ec7fc7bb167b2988a4970fc9b827e6e365eb7f69b4823d881c69"

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
