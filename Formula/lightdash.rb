class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.393.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.393.0/lightdash-cli-3.393.0-macos-arm64.tar.gz"
      sha256 "63c7f1b39d36c6dbecfe785c80f96eaba7008bb99a2ebed3f06dd7ddb9175a30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.393.0/lightdash-cli-3.393.0-macos-x64.tar.gz"
      sha256 "fd4961d61971693e4632f7c2b479256e44cf3522ad94b5e0e7964f93d146896c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.393.0/lightdash-cli-3.393.0-linux-x64.tar.gz"
    sha256 "f17cff9d86eb264bafacc5ed5f00365e08e835f4dc5e1cbbde31c4e20c55b163"

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
