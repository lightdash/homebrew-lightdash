class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.4.0/lightdash-cli-3.4.0-macos-arm64.tar.gz"
      sha256 "cc7b08d7034cdbd12d54233733c4f3669539a09468c2a78ac6e46841ed282688"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.4.0/lightdash-cli-3.4.0-macos-x64.tar.gz"
      sha256 "b3391426c256fde59731c672331434bb464324a364e60f3547062c0592c394a3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.4.0/lightdash-cli-3.4.0-linux-x64.tar.gz"
    sha256 "29b1b20153ca32ec60f264feefa80bd7690c661ed3ba767acc9b886d7eba733e"

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
