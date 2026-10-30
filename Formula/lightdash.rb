class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.108.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.0/lightdash-cli-3.108.0-macos-arm64.tar.gz"
      sha256 "dde2c27997d792c35587aa52e86c66f8022e3948b24a64cff8e305c62af81395"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.108.0/lightdash-cli-3.108.0-macos-x64.tar.gz"
      sha256 "c9889d84e275277aaff1d32afef43916a6707191fc3dbac696795abf8bef5828"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.108.0/lightdash-cli-3.108.0-linux-x64.tar.gz"
    sha256 "c84d8d4770859446bfbd641735c3cc6375d9d03342606752b8ca60c92302d7dd"

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
