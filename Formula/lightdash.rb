class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.399.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.2/lightdash-cli-2.399.2-macos-arm64.tar.gz"
      sha256 "9446982165218ac7ba22bfaf684b1cc03375931c7fa0a872d6503dc551f99546"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.2/lightdash-cli-2.399.2-macos-x64.tar.gz"
      sha256 "c37505ce23b767e8c9744bf6eeb9aa6e2fe39079477a62ecf0298166a2c3c67d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.399.2/lightdash-cli-2.399.2-linux-x64.tar.gz"
    sha256 "cf03b59a6f5252f17939ee72fabc4af743be7c1ab5a77b2cfe270afd0a5e95d5"

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
