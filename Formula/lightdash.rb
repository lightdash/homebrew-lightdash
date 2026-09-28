class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.361.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.0/lightdash-cli-2.361.0-macos-arm64.tar.gz"
      sha256 "20b93948b4129405917954b37072c9d258270b1ea263dbe599bfe87862f4dd08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.0/lightdash-cli-2.361.0-macos-x64.tar.gz"
      sha256 "be7bceaa212b265d44e7824e1e9233eaa0dac253493b0e7307dca9b021a5d423"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.361.0/lightdash-cli-2.361.0-linux-x64.tar.gz"
    sha256 "8ebd62ab81e2ac0c0ad09a23efefcfbdf0655c13e607f09db0003a19de258013"

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
