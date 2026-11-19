class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.343.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.343.1/lightdash-cli-3.343.1-macos-arm64.tar.gz"
      sha256 "711634344c71a9998cb033adccb6a3f06247dd5eec95c30ea843c89822d30124"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.343.1/lightdash-cli-3.343.1-macos-x64.tar.gz"
      sha256 "cdc4872401ea92b14081e3a5374b83a426c7e0683c38010e81c82b06eb58551a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.343.1/lightdash-cli-3.343.1-linux-x64.tar.gz"
    sha256 "262b0325f2d61ebbab01790260a41e8dd860b61a2a7dbf0db83ad1e4b131d404"

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
