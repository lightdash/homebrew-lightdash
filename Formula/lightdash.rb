class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.327.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.4/lightdash-cli-3.327.4-macos-arm64.tar.gz"
      sha256 "65f1bd10dbfdbe79ce95ae7d19d43d48c188b8040b8eebc1eb5151dea135a68c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.4/lightdash-cli-3.327.4-macos-x64.tar.gz"
      sha256 "c381b9cde4e39df5fdcc48ae8b6a42b707faae915c82be15d71fe958213492c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.327.4/lightdash-cli-3.327.4-linux-x64.tar.gz"
    sha256 "b024b7e807c6cda359136531586abd914c3d72cd5d737cd9dc838a346c2d6abe"

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
