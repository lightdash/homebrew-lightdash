class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.0/lightdash-cli-3.395.0-macos-arm64.tar.gz"
      sha256 "25ce2fc435e9aa7c79fc0bddac755602bf9f13ee081fb74d389f7423e9aed4e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.0/lightdash-cli-3.395.0-macos-x64.tar.gz"
      sha256 "a4848d79e1dfef05f29bc73f65ab78efbe9a7e1fdc8c2eef262ad1216060ea67"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.0/lightdash-cli-3.395.0-linux-x64.tar.gz"
    sha256 "e3e271cf618cf1877f122111885333c4759208411adbb1118d7ee21025427045"

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
