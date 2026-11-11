class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.214.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.214.1/lightdash-cli-3.214.1-macos-arm64.tar.gz"
      sha256 "3e2bc4bd1e837556054045932cfa0eaf3044cd2eade34026058e61b4760e5cdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.214.1/lightdash-cli-3.214.1-macos-x64.tar.gz"
      sha256 "e7cd0751182d5ada61587eef077d27fdfaf703f17054fa18350c0e438905beb6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.214.1/lightdash-cli-3.214.1-linux-x64.tar.gz"
    sha256 "34759368db97f7cb0e7807f92bfd867ca1c9d08e895b1131c98521e7dff1315b"

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
