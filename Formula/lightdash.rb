class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.4/lightdash-cli-2.344.4-macos-arm64.tar.gz"
      sha256 "f5af477e50bd8d42e0212747481acd34899b2d9b137914fe7bb203f41a94e4b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.4/lightdash-cli-2.344.4-macos-x64.tar.gz"
      sha256 "71e94eec6fbd538c85cc8a7cfadfbdd2075a3e36ab01b49955615e4906e8d3ff"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.4/lightdash-cli-2.344.4-linux-x64.tar.gz"
    sha256 "2f3e6e63ce857a91b75687e62f946eca0652e4569044447dd5d0464bd46188c6"

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
