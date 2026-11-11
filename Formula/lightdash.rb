class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.213.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.3/lightdash-cli-3.213.3-macos-arm64.tar.gz"
      sha256 "9e6e35434387b90943df1a00ae0f18f70a406a60676b52494e48515518b7a109"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.3/lightdash-cli-3.213.3-macos-x64.tar.gz"
      sha256 "99480af773f07c3192587a7c436b45dd0a61f4bf66c2fdd251972f4f1d136062"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.213.3/lightdash-cli-3.213.3-linux-x64.tar.gz"
    sha256 "8a600780cef4b56f208fd21a4d9750c09b40118bd2ae3271537e61a7a2195a98"

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
