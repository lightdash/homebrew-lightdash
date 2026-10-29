class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.95.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.1/lightdash-cli-3.95.1-macos-arm64.tar.gz"
      sha256 "d79e97448245037ab08ae71a03e0eab64a8421d2f6b2d8b9b11aa50ae5b6489c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.1/lightdash-cli-3.95.1-macos-x64.tar.gz"
      sha256 "67b2a2015c9c5ec1e132afec6676428b7bddfe429bf59d761ffe3b3a43db9ab1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.95.1/lightdash-cli-3.95.1-linux-x64.tar.gz"
    sha256 "77b937f7992d811fbc8c8244bde4d7f8363d386c9493a29671825bf11a51a824"

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
