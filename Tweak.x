%hook JailMonkey

- (BOOL)isJailBroken
{
	return NO;
}

- (BOOL)canMockLocation
{
	return NO;
}

- (BOOL)isDebugged
{
	return NO;
}

%end
