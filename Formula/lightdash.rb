class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.6/lightdash-cli-2.305.6-macos-arm64.tar.gz"
      sha256 "66262703d5277c8abc7452c349d1b1fd51a21771b683057bfd83ec053d9514dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.6/lightdash-cli-2.305.6-macos-x64.tar.gz"
      sha256 "1cc3c49aefedb1443156575590373b64baf2d429c12cb4d29a4a6b681e85f626"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.6/lightdash-cli-2.305.6-linux-x64.tar.gz"
    sha256 "07dca1a5104e3e31cf1ff9c9f9a1f8cdd7e13472e546f0c56e0782644b23d53a"

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
