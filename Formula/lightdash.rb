class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.4/lightdash-cli-3.351.4-macos-arm64.tar.gz"
      sha256 "dfcd706464d672c145c1bb153b1d72cf1861049785a78e661740576ee70d2636"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.4/lightdash-cli-3.351.4-macos-x64.tar.gz"
      sha256 "fdcee97633a44d74d2c583be60875b873cc7dfd3a5496f00f4eeb32d6c6c056d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.4/lightdash-cli-3.351.4-linux-x64.tar.gz"
    sha256 "8e2978749ce95465d72cd1c715dc99dada0c7f8babc4ac24a5ba48f5b444399e"

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
