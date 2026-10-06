class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.447.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.447.0/lightdash-cli-2.447.0-macos-arm64.tar.gz"
      sha256 "b037c4da6052a6115cf045349d9666e035bdb1e5ac5a7ebcc45df8db7e254095"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.447.0/lightdash-cli-2.447.0-macos-x64.tar.gz"
      sha256 "0b90b82fee5f4b2a64f5b3c76f59a8d0a7008051cb7fa6167fed5ae76ffa73dd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.447.0/lightdash-cli-2.447.0-linux-x64.tar.gz"
    sha256 "62eff9aafff61df9134ab635ae2a473dfdd7132f6c1c6ea1797db1afdd86f9e0"

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
