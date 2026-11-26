class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.2/lightdash-cli-3.415.2-macos-arm64.tar.gz"
      sha256 "4e6adc0574ea09bd1a0afb01ecdc7f6daeb3cdb1cf09beee6a8db26e92f844bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.2/lightdash-cli-3.415.2-macos-x64.tar.gz"
      sha256 "30315117f35968720133dd75ed4e969929425e4ce1e1ee336fa65f562da9b6c4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.2/lightdash-cli-3.415.2-linux-x64.tar.gz"
    sha256 "f75ac708ea58f24582a48d07ae3f0aa856a2445d04a6fa58111fcb93a06723cf"

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
