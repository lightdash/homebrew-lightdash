class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.446.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.446.0/lightdash-cli-3.446.0-macos-arm64.tar.gz"
      sha256 "84d7d6bb04d3bfee5a2372c9757d46009e05826c1993c71d1d46db3eff67e2da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.446.0/lightdash-cli-3.446.0-macos-x64.tar.gz"
      sha256 "6f8b147d4ecaf2af3151caee004557837e25084069985feb7eafd571dc96af4d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.446.0/lightdash-cli-3.446.0-linux-x64.tar.gz"
    sha256 "9922e53bc8e5b0cfe4f89169b6c6035263966054edbc7baa91089f0749d3ff60"

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
