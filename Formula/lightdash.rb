class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.5.0/lightdash-cli-3.5.0-macos-arm64.tar.gz"
      sha256 "4a7c858701a85733382ec0c3bdbee6f7eb2bb48d71d75f20ec6bb1962d8e733f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.5.0/lightdash-cli-3.5.0-macos-x64.tar.gz"
      sha256 "424a5f389776abc4a27760da0509a5ba26a728f64dfd8c55a8596c9750de2740"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.5.0/lightdash-cli-3.5.0-linux-x64.tar.gz"
    sha256 "1d85c8c363a19bff3842bee4c39e1be1d68a6898754d59a2f58d07f57809cc24"

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
