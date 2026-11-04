class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.146.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.0/lightdash-cli-3.146.0-macos-arm64.tar.gz"
      sha256 "43d8497f420443df6f6993e26463e718e48ec7224081485812a19680b8b42a9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.146.0/lightdash-cli-3.146.0-macos-x64.tar.gz"
      sha256 "35fceae48706a6632f54b877fd46ea93006236278e3f0d7b8b0d77c36937b9dd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.146.0/lightdash-cli-3.146.0-linux-x64.tar.gz"
    sha256 "d9533ae8f7bcc6e6a7aaf46fc42b7b6543e1c52afbeefd46d0cb3db6e11c2a5e"

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
