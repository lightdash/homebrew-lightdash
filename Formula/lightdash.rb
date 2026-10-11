class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.560.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.560.0/lightdash-cli-2.560.0-macos-arm64.tar.gz"
      sha256 "6353ba4f17adff0147dba77ba1a438831729de298b646908030b466f7a404702"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.560.0/lightdash-cli-2.560.0-macos-x64.tar.gz"
      sha256 "2a260d6d46d51142af59bab9f983f79f16d055159383ec45e40b59fccb313f0d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.560.0/lightdash-cli-2.560.0-linux-x64.tar.gz"
    sha256 "7a9392a7859c9a46749daba7c6d2af9ab2f9afd59c02ffec0b9e775a245bb0ed"

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
