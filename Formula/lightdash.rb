class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.455.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.4/lightdash-cli-2.455.4-macos-arm64.tar.gz"
      sha256 "196a18c85ac8b752f680621d4bf8ec9df7c559702453d16e90c5aaa96f0f9b10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.4/lightdash-cli-2.455.4-macos-x64.tar.gz"
      sha256 "a442b99e28f10d35d2f044e71714c18b55203cf92eedfeef7b065ad4e83acfd8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.455.4/lightdash-cli-2.455.4-linux-x64.tar.gz"
    sha256 "4f9895e5ff0d739ac16adbc3efb3b8d0fd85c1296f7fe88385a5c5484b5feea0"

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
