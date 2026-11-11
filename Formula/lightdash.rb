class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.215.0/lightdash-cli-3.215.0-macos-arm64.tar.gz"
      sha256 "ed9b7b68a875cefed72757e1af08c0dbc47c2923db10451bba902b3d2647a3d1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.215.0/lightdash-cli-3.215.0-macos-x64.tar.gz"
      sha256 "eb710d11ab9833b0a6019afdedb46f56b907c2496b53210b9b17e7c958941246"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.215.0/lightdash-cli-3.215.0-linux-x64.tar.gz"
    sha256 "78f436ad24f47ce7d6a2ac41dec7fa57aa262d4d794e9096ed5d44dfb44f118a"

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
