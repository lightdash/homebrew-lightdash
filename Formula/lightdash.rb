class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.3/lightdash-cli-3.395.3-macos-arm64.tar.gz"
      sha256 "6a7a4f9e8e02bec35983c8360a9b36906c9bd2eef459a3805e6de508838d85f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.3/lightdash-cli-3.395.3-macos-x64.tar.gz"
      sha256 "70998c2ddf6129ae5db75a176794f3a7437fe284647b9a159edb9cb7e647f7e7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.3/lightdash-cli-3.395.3-linux-x64.tar.gz"
    sha256 "c94e108e290f4ba5bac5609f870537897c9f720923efe7158a5fd4a478eafabe"

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
