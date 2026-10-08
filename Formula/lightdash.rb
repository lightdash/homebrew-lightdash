class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.474.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.474.0/lightdash-cli-2.474.0-macos-arm64.tar.gz"
      sha256 "b4212944c43e9a79c9305b0f3db4a463cfce71071c7e635e4eb003dd4df005fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.474.0/lightdash-cli-2.474.0-macos-x64.tar.gz"
      sha256 "59563ea3fd398434266fec9ccc010adc83293d18aaa8f92861cc8fd1911dd672"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.474.0/lightdash-cli-2.474.0-linux-x64.tar.gz"
    sha256 "d997525a2824895e9b31a41cbc83f86b4e72e5c0488bd8dce003697e84e1088f"

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
