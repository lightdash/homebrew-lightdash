class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.166.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.2/lightdash-cli-3.166.2-macos-arm64.tar.gz"
      sha256 "da3d078cc355c7328796e1b73877edc7445e59a2d414d4847970518fe99c8ad3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.166.2/lightdash-cli-3.166.2-macos-x64.tar.gz"
      sha256 "a9dbabea84721a3ee29b6780768252f1c2c4916d9926441ff4ecb6144b9cad2d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.166.2/lightdash-cli-3.166.2-linux-x64.tar.gz"
    sha256 "fada0225009003588c2dc5b87477c9010d1aa1fb71d60235e00bddf72da939bc"

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
