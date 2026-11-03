class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.133.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.133.0/lightdash-cli-3.133.0-macos-arm64.tar.gz"
      sha256 "cfa1c7bf03d6f0c63f9e709173c3674927fc03121e9fd79d1062e6a20b0c5fc9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.133.0/lightdash-cli-3.133.0-macos-x64.tar.gz"
      sha256 "44cb38a916deadecc713e5a5de9a41f718c1657c83521e342e6a8d9fab22cb10"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.133.0/lightdash-cli-3.133.0-linux-x64.tar.gz"
    sha256 "d07076a70863eebf8e15096c5c59e6f89f93ed1afa248bb194955f92ab0e0bbd"

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
