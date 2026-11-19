class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.344.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.344.0/lightdash-cli-3.344.0-macos-arm64.tar.gz"
      sha256 "9e8eddc886b8a88cb7e2dbe051b753bf34bc341a658b5f685612a65d89f05e32"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.344.0/lightdash-cli-3.344.0-macos-x64.tar.gz"
      sha256 "826d252e818e849454f79837e85e44d5a203a060cc1b925deb699883ff8c5cbc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.344.0/lightdash-cli-3.344.0-linux-x64.tar.gz"
    sha256 "a8c67e035a03775954c9bd5d08fef8c1049d052449b284dfce7d8c4ed9199710"

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
