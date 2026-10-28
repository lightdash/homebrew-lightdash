class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.92.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.92.0/lightdash-cli-3.92.0-macos-arm64.tar.gz"
      sha256 "8834121fefaa820cbbf7829859dfbc1f67d64571d74ce396bedf74b150826136"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.92.0/lightdash-cli-3.92.0-macos-x64.tar.gz"
      sha256 "13e27e42772fd794a42bee397fdd941e7cf9c02889440c2bda543d050f19e3b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.92.0/lightdash-cli-3.92.0-linux-x64.tar.gz"
    sha256 "8875112f08fc0aea0165c16b11d79173f97e1632e8098f8648b675841c9eecfd"

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
