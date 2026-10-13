class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.576.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.576.0/lightdash-cli-2.576.0-macos-arm64.tar.gz"
      sha256 "95c4b9428e9e2bb338550e37c2d9f49b7fec88181100b36ecc02d692abc771c4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.576.0/lightdash-cli-2.576.0-macos-x64.tar.gz"
      sha256 "00a0004b55a49379b9eacf626aecbd4bd01630c4d718cea8f4a17d2981ef8159"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.576.0/lightdash-cli-2.576.0-linux-x64.tar.gz"
    sha256 "a2ceab6dfb18c7c95f1dbc09ff968a7af32e9e65dd02f35b1c344a070d7cf704"

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
