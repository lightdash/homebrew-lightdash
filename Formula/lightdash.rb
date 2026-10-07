class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.453.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.453.0/lightdash-cli-2.453.0-macos-arm64.tar.gz"
      sha256 "61c509aacabd4a691d5935aff0576bbf51890213622201e2ab59a9d71c192c11"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.453.0/lightdash-cli-2.453.0-macos-x64.tar.gz"
      sha256 "d542971db121aa79c81c37ee4d67346c639c98997d739e3da5a7fa80d41a350a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.453.0/lightdash-cli-2.453.0-linux-x64.tar.gz"
    sha256 "fabbb5ae3d924f814b6c9fca4529f2b77cf293d349e4037cddc8028d76d161eb"

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
