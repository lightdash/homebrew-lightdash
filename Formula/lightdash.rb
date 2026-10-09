class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.518.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.518.0/lightdash-cli-2.518.0-macos-arm64.tar.gz"
      sha256 "263f7e49cfe1408abe7d20a1688eb93516ad90112ff49c3b3b0e0128fe7f6a46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.518.0/lightdash-cli-2.518.0-macos-x64.tar.gz"
      sha256 "dc5022487e25a9328f96dd61a74159a73a7bfe96db581940feb8119a4232177c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.518.0/lightdash-cli-2.518.0-linux-x64.tar.gz"
    sha256 "947653cb99b4bec67d50fda9d5e4d37a15ae807bd72f40efb47fca0478457382"

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
