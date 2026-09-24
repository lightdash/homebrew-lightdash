class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.327.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.1/lightdash-cli-2.327.1-macos-arm64.tar.gz"
      sha256 "5f4211a26623fb98537fbb9d3b7bb1cb7758671ecbe836c755600b21f443abdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.327.1/lightdash-cli-2.327.1-macos-x64.tar.gz"
      sha256 "882789f655bd4e99c25e5b65f0b1f4547627ab7700eca64b9a0b91a011e18e15"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.327.1/lightdash-cli-2.327.1-linux-x64.tar.gz"
    sha256 "2523be97c47692e48822395b9841f5fab877c0995acb5231178abec36d84ed14"

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
