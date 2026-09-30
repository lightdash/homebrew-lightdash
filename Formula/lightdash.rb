class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.397.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.2/lightdash-cli-2.397.2-macos-arm64.tar.gz"
      sha256 "3019e8ed4c2d7c7919f156fc713d7e7859bb77703f793c1f1f0f06031b0130b9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.397.2/lightdash-cli-2.397.2-macos-x64.tar.gz"
      sha256 "43d40890987b53448062fbc1fd6628d9ca696b5c49839b957ffec56d052703ce"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.397.2/lightdash-cli-2.397.2-linux-x64.tar.gz"
    sha256 "7fad304c0893863d60925ec25801cf2ba4f2d44299b5b557f2c867d71163799f"

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
