class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.329.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.329.1/lightdash-cli-3.329.1-macos-arm64.tar.gz"
      sha256 "869ca4c9f10a15aff478839ebbf094a6e1ed79a735c42efebe0d8bccd9666f10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.329.1/lightdash-cli-3.329.1-macos-x64.tar.gz"
      sha256 "73799bcb2765d85e893367fde6054c02c228ee642e6e8478bff8ee24c4f168ab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.329.1/lightdash-cli-3.329.1-linux-x64.tar.gz"
    sha256 "09b22ae926babdc0f51ffd9e440980b0ca90699818cf128d229878a670805c58"

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
