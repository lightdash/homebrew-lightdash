class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.434.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.434.0/lightdash-cli-2.434.0-macos-arm64.tar.gz"
      sha256 "31999524f78ed76af3bf6fad0bc792776a09231c9a1e150b744f52477b43a6f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.434.0/lightdash-cli-2.434.0-macos-x64.tar.gz"
      sha256 "179fb2f9e44c7cfe943e48d0858ccde1624b1314837fccee0ee67f06c722c001"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.434.0/lightdash-cli-2.434.0-linux-x64.tar.gz"
    sha256 "ddcd71a872026c24a390703190fc83ba23ece3b41e179bd8ae08f6ce09fd57d2"

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
