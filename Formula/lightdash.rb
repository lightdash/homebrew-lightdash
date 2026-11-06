class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.167.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.167.0/lightdash-cli-3.167.0-macos-arm64.tar.gz"
      sha256 "0a19801fc34f34578edd2ca05b78dbe08776c8d85e6ccbc46106eba2733cf25b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.167.0/lightdash-cli-3.167.0-macos-x64.tar.gz"
      sha256 "447d9ac37cb7fd3c68fc9970951075bf4fff464d2d71c18579cee0cebd0527e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.167.0/lightdash-cli-3.167.0-linux-x64.tar.gz"
    sha256 "35dc19e6f75af6bf6c052ca1bf84040a20a065958bf0e9b76f0f92e9f38e487e"

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
