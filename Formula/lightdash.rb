class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.599.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.1/lightdash-cli-2.599.1-macos-arm64.tar.gz"
      sha256 "c385352f7b3d668ff6ab067bdf2f3145ee823fd50739f8d9977dd5f0da1bcf7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.1/lightdash-cli-2.599.1-macos-x64.tar.gz"
      sha256 "70bdd567a01c7373f08244cf71a5d480cb837a9163e7d7bd9165e3e11365e430"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.599.1/lightdash-cli-2.599.1-linux-x64.tar.gz"
    sha256 "63686d903fa6b826e566b70d26bef2ab87536e25ee672edd3b172635c5ab6b2d"

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
