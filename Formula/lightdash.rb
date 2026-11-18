class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.308.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.308.0/lightdash-cli-3.308.0-macos-arm64.tar.gz"
      sha256 "15a811035b7f2271a32b8af850b6c6190c796f924735c330448b9325c48f2bad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.308.0/lightdash-cli-3.308.0-macos-x64.tar.gz"
      sha256 "c01c2e20de1415c726489bab20dde2a2e3364b2d4e3a3af929565d8af23f1da2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.308.0/lightdash-cli-3.308.0-linux-x64.tar.gz"
    sha256 "c01aec4636d63b1c01fdef75590b30a5d6df0081be4a4ba618882a6796b6a1cf"

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
