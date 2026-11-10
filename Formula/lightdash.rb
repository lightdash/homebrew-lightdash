class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.197.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.3/lightdash-cli-3.197.3-macos-arm64.tar.gz"
      sha256 "a215d2933de4cb1cfb640edba8d92dd8100b7129e1e4465edd55b149a4d99b73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.3/lightdash-cli-3.197.3-macos-x64.tar.gz"
      sha256 "682a4df4542850c97d984f6828781c0c673604c24e3000111d91724dd1120fdf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.197.3/lightdash-cli-3.197.3-linux-x64.tar.gz"
    sha256 "0faae6e385d8e0d08d936105831eb10d8d10ac41353a7e965688eddb18d003ca"

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
